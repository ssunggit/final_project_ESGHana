/**
 * 
 */
 var page_num =1;
 
 var page_img=[ ['/resources/img/image1.png', '/resources/img/image2.png','/resources/img/image3.png'],
 ['/resources/img/image3.png', '/resources/img/image4.png','/resources/img/image5.png'],
 ['/resources/img/image5.png', '/resources/img/image1.png','/resources/img/image2.png'],
 ['/resources/img/image2.png', '/resources/img/image3.png','/resources/img/image4.png'],
 ['/resources/img/image4.png', '/resources/img/image5.png','/resources/img/image1.png']  ];
 var dimg1=null;
 var dimg2=null;
 var dimg3=null;
 window.onload=function(){
	dimg1 = document.querySelector("#dimg1");
	dimg2 = document.querySelector("#dimg2");
	dimg3 = document.querySelector("#dimg3");
	dimg1.style.background="url("+page_img[page_num-1][0]+") no-repeat center center";
	dimg1.style.backgroundSize="620px 800px";
	dimg2.style.background="url("+page_img[page_num-1][1]+") no-repeat center center";
	dimg2.style.backgroundSize="620px 800px";
	dimg3.style.background="url("+page_img[page_num-1][2]+") no-repeat center center";
	dimg3.style.backgroundSize="620px 800px";
	
	var percent = document.querySelectorAll(".per");
	var progress = document.querySelectorAll(".front");
	for(i=0; i<3; i++){
		var per = parseInt(percent[i].innerText.split("%")[0]);
		var k = parseInt(percent[i].dataset.value);
		var width = parseInt(520 * (per * 0.01));
		progress[k].style.width=width+"px";
	}
	
	var heart = document.querySelectorAll(".bi-heart");
	var heart_fill = document.querySelectorAll(".bi-heart-fill");
	for(i=0; i<3; i++){
		heart[i].addEventListener("click",function(){
			this.style.display="none";
			heart_fill[this.dataset.value].style.display="inline-block";
		});
		heart_fill[i].addEventListener("click",function(){
			this.style.display="none";
			heart[this.dataset.value].style.display="inline-block";
		});
	}
	var sub = document.querySelectorAll(".sub");
	var drop = document.querySelectorAll(".drop_arrow");
	var mm = document.querySelectorAll(".mm");
	for(i=0; i<3; i++){
		mm[i].addEventListener("mouseover",function(){
			var no=this.dataset.value;
			sub[no].style.display="block";
		});
		mm[i].addEventListener("mouseleave",function(){
			var no=this.dataset.value;
			sub[no].style.display="none";
		});
		drop[i].addEventListener("click",function(){
			var no=this.dataset.value;
			sub[no].style.display="block";
		});
	}
};

function drop(no){
	var sub = document.querySelectorAll(".sub");
	for(i=0; i<3; i++){
		if(i==no)
			sub[i].style.display="block";
		else
			sub[i].style.display="none";
	}
}

 function pre(){
	if(page_num!=1){
		page_num = page_num-1;
		move(page_num);
	}
}

function next(){
	if(page_num!=5){
		page_num = page_num+1;
		move(page_num);
	}
}

function move(no){
	var num = document.getElementsByClassName("num");
	for(i=0;i<5;i++) num[i].style.color="black";
	num[no-1].style.color="red";
	
	page_num = no;
	dimg1.style.background="url("+page_img[page_num-1][0]+") no-repeat center center";
	dimg1.style.backgroundSize="620px 800px";
	dimg2.style.background="url("+page_img[page_num-1][1]+") no-repeat center center";
	dimg2.style.backgroundSize="620px 800px";
	dimg3.style.background="url("+page_img[page_num-1][2]+") no-repeat center center";
	dimg3.style.backgroundSize="620px 800px";
}