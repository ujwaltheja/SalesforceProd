/*Code Robot (c) 2017
Common CSS */

/* button spacing */
.button-space {
	padding: 2px;
}


/* full screen modals */
.modal-dialog-full {
  	width: 100%;
  	height: 100%;
  	margin: 0;
  	padding: 0;
}

.modal-content-full {
  	height: auto;
	min-height: 100%;
 	border-radius: 0;
}

/* select row in datatables */
.dt-selected-row {
	color: #FFFFFF;
    background-color: #428bca;
}

/* spinner for loading */
.glyphicon-refresh-animate {
	-webkit-animation: spin .7s infinite linear;
	-moz-animation: spin .7s infinite linear;
	-o-animation: spin .7s infinite linear;
	animation: spin .7s infinite linear;
}
@-moz-keyframes spin {
  0% {
    -moz-transform: rotate(0deg);
  }
  100% {
    -moz-transform: rotate(359deg);
  }
}
@-webkit-keyframes spin {
  0% {
    -webkit-transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
  }
}
@-o-keyframes spin {
  0% {
    -o-transform: rotate(0deg);
  }
  100% {
    -o-transform: rotate(359deg);
  }
}
@keyframes spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg);
  }
}
/* end spinner */
