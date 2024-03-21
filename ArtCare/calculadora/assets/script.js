metricas_sim.addEventListener('click', function () {
  campo_restauracao.classList.add('desativado');
});

metricas_nao.addEventListener('click', function () {
  campo_restauracao.classList.remove('desativado');
});

function calc() {
  var metricasSim = document.getElementById('metricas_sim').checked;
  var totalManutencao = Number(document.getElementById('total_manutencao').value);
  var restauracao = document.getElementById('restauracao');
  var porcentagemPerda = (restauracao.value) / totalManutencao;
  var tempo = document.getElementById('tempo').value;
  var perdas;
  var perdasTotal;
  
  if (metricasSim) {
    porcentagemPerda = 0.1786;
    perdas = porcentagemPerda * totalManutencao;
    restauracao.value = perdas.toFixed(2);
  } else {
    porcentagemPerda = porcentagemPerda;
    perdas = porcentagemPerda * totalManutencao;
  }

  if (tempo == "umMes") {
    perdasTotal = perdas / 12;
  } else if (tempo == "seisMeses") {
    perdasTotal = perdas / 2;
  } else if (tempo == "tresAnos") {
    perdasTotal = perdas * 3;
  } else if (tempo == "cincoAnos") {
    perdasTotal = perdas * 5;
  } else {
    perdasTotal = perdas;
  }

  resultado.innerHTML = `<p>Resultado:</p>
  <p>É possivel economizar aproximadamente R$${perdasTotal.toFixed(2)}, que equivale à ${((porcentagemPerda) * 100).toFixed(2)}% com reparos de obra, caso utilize nossa solução.</p>`;
}

// Formatando número
const formatter = new Intl.NumberFormat('pt-BR', {
  style: 'currency',
  currency: 'BRL',
});

console.log(formatter.format(2500));