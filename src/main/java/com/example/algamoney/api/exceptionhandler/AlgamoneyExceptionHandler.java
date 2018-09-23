package com.example.algamoney.api.exceptionhandler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class AlgamoneyExceptionHandler extends ResponseEntityExceptionHandler {

	@Autowired
	private MessageSource messageSource;
	
	@Override
	protected ResponseEntity<Object> handleHttpMessageNotReadable(HttpMessageNotReadableException ex,
			HttpHeaders headers, HttpStatus status, WebRequest request) {
		
		String mensagemUser = messageSource.getMessage("mensagem.invalida", null, LocaleContextHolder.getLocale());
		String mensagemLogger = ex.getCause().toString();
		
		return super.handleExceptionInternal(ex, new Erro(mensagemUser, mensagemLogger), headers, HttpStatus.BAD_REQUEST, request);
	}
	
	public static class Erro {
	
		private String mensagemUser;
		private String mensagemLogger;

		public Erro(String mensagemUser, String mensagemLogger) {
			this.mensagemUser = mensagemUser;
			this.mensagemLogger = mensagemLogger;
		}

		public String getMensagemUser() {
			return mensagemUser;
		}

		public void setMensagemUser(String mensagemUser) {
			this.mensagemUser = mensagemUser;
		}

		public String getMensagemLogger() {
			return mensagemLogger;
		}

		public void setMensagemLogger(String mensagemLogger) {
			this.mensagemLogger = mensagemLogger;
		}
		
	}
}