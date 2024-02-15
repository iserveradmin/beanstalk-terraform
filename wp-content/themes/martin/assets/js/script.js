$(document).ready(function(){
    console.log("irfan")
    $("#uplodArtWork").on('change', function(e){
        var fileName = e.target.files[0].name;
        var fileUrl = URL.createObjectURL(e.target.files[0]);
      
        console.log(fileName, fileUrl)
        let fileCard = `
        <div class="upldFilCrd">
            <div class="ufcImg">
                <img src="${fileUrl}" alt="">
            </div>
            <div class="ufcFotr">
                <span class="ufcName">${fileName}</span>
                <button class="rmveBtn" onClick="removeCrd(this);">X Remove</button>
            </div>
        </div>
        `
        $('.uploadedFiles').append(fileCard);
    });
     
});
function removeCrd(e){
    $(e).closest('.upldFilCrd').remove();
} 