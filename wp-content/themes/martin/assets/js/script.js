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

    $('.hmSlider .owl-carousel').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        dots:false,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:3
            }
        }
    })
    $('.formSlider .owl-carousel').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:1
            },
            1000:{
                items:1
            }
        }
    })
     
});
function removeCrd(e){
    $(e).closest('.upldFilCrd').remove();
} 