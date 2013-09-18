<!-- BEGIN: MAIN -->

<h2>{PHP.L.payments_history}</h2>	

<div class="quick-actions">
	<a href="{PHP|cot_url('admin', 'm=payments')}" class="quick-action icon archive">{PHP.L.payments_allusers}</a>
	<a href="{PHP|cot_url('admin', 'm=payments&p=payouts')}" class="quick-action icon archive">{PHP.L.payments_payout}</a>
</div>

<!-- BEGIN: PAYMENTS -->

<div class="block button-toolbar">
	<!-- IF {PHP.cfg.payments.balance_enabled} -->
	<p><b>{PHP.L.payments_siteinvoices}:</b> {PHP.L.payments_debet}: {INBALANCE} {PHP.L.valuta} | {PHP.L.payments_credit}: {OUTBALANCE} {PHP.L.valuta} | {PHP.L.payments_balance}: {BALANCE} {PHP.L.valuta}</p>
	<!-- ENDIF -->
	<p><b>{PHP.L.payments_allpayments}:</b> {CREDIT} {PHP.L.valuta}</p>
</div>

<div class="block">
	<table class="cells">
	<thead>
	<tr>
		<th class="coltop">#</th>
		<th class="coltop">{PHP.L.User}</th>
		<th class="coltop">{PHP.L.Date}</th>
		<th class="coltop"></th>
		<th class="coltop">{PHP.L.payments_summ}</th>
		<th class="coltop">{PHP.L.payments_desc}</th>
		<th class="coltop">{PHP.L.payments_area}</th>
		<th class="coltop">{PHP.L.payments_code}</th>
		<th class="coltop">{PHP.L.Status}</th>
	</tr>
	</thead>
	<tbody>
	<!-- BEGIN: PAY_ROW -->
	<tr>
		<td>{PAY_ROW_ID}</td>
		<td><a href="{PAY_ROW_USER_ID|cot_url('admin', 'm=payments&id='$this)}">{PAY_ROW_USER_NICKNAME}</a></td>
		<td>{PAY_ROW_ADATE|date('d.m.Y H:i',$this)}</td>
		<td class="centerall"><!-- IF {PAY_ROW_AREA} == 'balance' -->+<!-- ELSE -->-<!-- ENDIF --></td>
		<td style="text-align: right;">{PAY_ROW_SUMM|number_format($this, 2, '.', ' ')}</td>
		<td>{PAY_ROW_DESC}</td>
		<td>{PAY_ROW_AREA}</td>
		<td>{PAY_ROW_CODE}</td>
		<td>{PAY_ROW_STATUS}</td>
	</tr>
	<!-- END: PAY_ROW -->
	</tbody>
	</table>
	
	<div class="action_bar valid">
		<div class="pagination"><ul>{PAGENAV_PAGES}</ul></div>
	</div>	
	
</div>
	
<!-- END: PAYMENTS -->

<!-- BEGIN: PAYOUTS -->
<table class="cells">
<thead>
	<tr>
		<th class="span2">{PHP.L.User}</th>
		<th class="span2">{PHP.L.payments_summ}</th>
		<th>{PHP.L.payments_balance_payout_details}</th>
		<th>{PHP.L.Date}</th>
		<th></th>
	</tr>
</thead>	
<!-- BEGIN: PAYOUT_ROW -->
	<tr>
		<td>{PAYOUT_ROW_USER_NAME}</td>
		<td>{PAYOUT_ROW_SUMM}</td>
		<td>{PAYOUT_ROW_DETAILS}</td>
		<td><!-- IF {PAYOUT_ROW_DATE} > 0 -->{PAYOUT_ROW_DATE|cot_date('d.m.Y H:i',$this)}<!-- ELSE -->&mdash;<!-- ENDIF --></td>
		<td>
			<!-- IF {PAYOUT_ROW_STATUS_ID} == 'process' -->
			<a href="{PAYOUT_ROW_DONE_URL}">{PHP.L.Confirm}</a>
			<!-- ENDIF -->
		</td>
	</tr>
<!-- END: PAYOUT_ROW -->
</table>
<!-- END: PAYOUTS -->
			
<!-- END: MAIN -->