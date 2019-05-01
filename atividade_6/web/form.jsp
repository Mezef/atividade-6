<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<title>Atividade 6 - Matheus Muniz</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
	<script src="js/jquery.validate.min.js" type="text/javascript"></script>
	<script src="js/jquery.mask.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/notify.min.js" type="text/javascript"></script>
	<script src="js/additional-methods.min.js" type="text/javascript"></script>
	<script src="js/localization/messages_pt_BR.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function(){

			$('#cpf').mask('000.000.000-00')
                        $('#data').mask('00/00/0000')
                        $('#telefone').mask('(00)0000-0000')

                        $("#formulario").validate({
                            rules: {
                                nome: {
                                        required: true,
                                        minWords: 2
                                },
                                cpf: {
                                        required:true,
                                	cpfBR: true
                               	},
                               	data: {
                                        required: true,
                                        dateITA: true
				}
                            }
                        })
                    })
   	</script>
</head>

<body>
	<div class="container-fluid">
	
		<header class="row no-gutters">
		<!--TOP A-->
			<div class="col-12 col-md-4" id="topa">
				<a href="form.jsp"><img class="img-responsive" src="fotos/logofatec.png"></a>
			</div>	

		<!--TOP B-->
			<div class="col-12 col-md-4 d-flex justify-content-center align-items-center" id="topb">
				
			</div>	

		<!--TOP C-->
			<div class="col-12 col-md-4 d-flex justify-content-center align-items-center" id="topc">
				
			</div>	
		</header>

		<!--BODY D-->
		<div id="body">
			<section class="row">
				<div class="col-12 col-md-12 text-justify">
					<h2>< /Informe os campos à seguir para que possamos entrar em contato. ></h2>

					<div class="card">
						<div class="card-header">
							Cadastro
						</div>

							<div class="card-body">
								<form name="formulario" id="formulario" method="post" action="salvar.jsp">
						            <div class="form-group">
						            	<label for="nome">Nome Completo:</label>
						            		<input type="text" name="nome" id="nome" placeholder="Digite seu nome completo" class="form-control">
						            </div>
						            <div class="form-group">
						            	<label for="data">Data de nascimento:</label>
						            		<input type="text" name="data" id="data" placeholder="dd/mm/aaaa" class="form-control">
						            </div>
                                                            <div class="form-group">
						            	<label for="telefone">Telefone:</label>
						            		<input type="text" name="telefone" id="telefone" placeholder="Insira um número para contato" class="form-control">
						            </div>
						            <div class="form-group">
						            	<label for="cpf">CPF:</label>
						            		<input type="text" name="cpf" id="cpf" placeholder="Digite seu CPF sem pontos ou traços" class="form-control">
									</div>
						            <input class="btn btn-primary" type="submit" value="Enviar">
						        </form>
						    </div>
						</div>						
					</div>
				</div>				
			</section>
		</div>
			<footer class="row no-gutters">
            		<!--FOOTER E-->
                		<div class="col-12 col-md-6" id="footere">
                            <div class="row d-flex justify-content-center">
                            <img src="fotos/profissional.jpg">
                            </div>
                            <div class="row d-flex justify-content-end">
                            <p class="text-center">
                                Matheus Muniz <br>
                                Aprendiz em programação, expandindo o conhecimento em cada uma das áreas de atuação de desenvolvimento para descobrir no que focar.
                            </p>
                            </div>
                        </div> 
               		<!--FOOTER F-->
                		<div class="d-none d-md-block col-md-6 align-items-end" id="footerf">
                            <p class="font-weight-light text-center"><br><br><br><br><br>Fatec Guaratinguetá - Linguagem de programação<br>Layout criado por Matheus Muniz para a Atividade 6.
                            </p>
                        </div> 
            	</footer>   
	</div>

</body>
</html>