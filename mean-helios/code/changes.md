Set up your backend code to use the IAM role:

Install the AWS SDK if you haven't already:

```
npm install aws-sdk
```

Modify the backend code to use the default credentials provider chain, which includes the IAM role if your backend server is running on an EC2 instance or in an ECS task with an assigned role.

```
const express = require('express');
const AWS = require('aws-sdk');
const app = express();
const port = 3000;

// Configure AWS SDK to use the default credentials provider chain
const s3 = new AWS.S3({
    region: 'us-east-1' // Set your region here
});

// Endpoint to fetch a resource from S3
app.get('/fetch-from-s3/:key', async (req, res) => {
    const params = {
        Bucket: 'your-bucket-name',
        Key: req.params.key
    };

    try {
        const data = await s3.getObject(params).promise();
        res.send(data.Body);
    } catch (error) {
        console.error('Error fetching from S3:', error);
        res.status(500).send(error);
    }
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});

```
Ensure your server is configured to use the IAM role:

For EC2 instances: I have attach an IAM role to the instance with the necessary S3 permissions.


Frontend code to fetch from the backend:
```
fetch('http://localhost:3000/fetch-from-s3/your-file-key')
    .then(response => response.blob())
    .then(blob => {
        // Handle the blob (e.g., display the image, download a file, etc.)
        const url = URL.createObjectURL(blob);
        const img = document.createElement('img');
        img.src = url;
        document.body.appendChild(img);
    })
    .catch(error => console.error('Error fetching resource:', error));

```
By following these steps, you can securely use an IAM role to access your S3 bucket from your backend server without exposing your access and secret keys in the code and avoid CORS.

