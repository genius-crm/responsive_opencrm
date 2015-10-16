{strip}	
	<div class="listViewTopMenuDiv noprint">
		<div class="listViewActionsDiv row-fluid">
			<span class="btn-toolbar">
			<span class="pull-left listViewActions">
					{if count($actionbtn) gt 0}
					<span class="btn-group">
						<button class="btn dropdown-toggle" data-toggle="dropdown">
							<strong>Action</strong>&nbsp;&nbsp;<i class="caret"></i>
						</button>
						<ul class="dropdown-menu pull-right">
							{if $actionbtn['editRecordPermission']}

							
							<li id="EmailCampaigns_detailView_moreAction_Delete_Email_Campaigns">
								<a id="massActionEdit">Edit</a>
							</li>
							{/if}
							{if $actionbtn['calendarRecordPermission']}
							<li id="EmailCampaigns_detailView_moreAction_LBL_DUPLICATE">
								<a id="massActionTask">Task</a>
							</li>
							{/if}
						</ul>
					</span>
					{/if}
				</span>
				<span class="pull-right listViewActions">
					<span class="pageNumber alignTop" style="margin-right:10px; position: relative; top: 5px;">{$DISPLAYTOTALPAGE}</span>
					<span class="btn-group alignTop">
							<button type="button" {$DISABLEPRE} id="UniqueOpenLinkListViewPreviousPageButton" class="btn">
								<span class="icon-chevron-left"></span>
							</button>
							<button type="button" {$DISABLENXT} id="UniqueOpenLinkListViewNextPageButton" class="btn">
								<span class="icon-chevron-right"></span>
							</button>
					</span>
				</span>
				<div class="clearfix"></div>
				<input type="hidden" value="{$PAGE}" id="pageCount">
				<input type="hidden" value="{$LISTTYPE}" id="listtype">
				<input type="hidden" id="recordsCount">
				<input type="hidden" id="selectedIds" name="selectedIds">
				<input type="hidden" id="excludedIds" name="excludedIds">
				<input type="hidden" id="relatedModule" name="relatedModule" value="{$relatedModule}">
				<input type="hidden" id="recordType" name="recordType" value="UniqueLinkClick">
			</span>
		</div>
	</div>
	<div id="selectAllMsgDiv" class="alert-block msgDiv noprint">
		<strong><a id="selectAllMsg">Select all&nbsp;Leads&nbsp;(<span id="totalRecordsCount"></span>)</a></strong>
	</div>
	<div id="deSelectAllMsgDiv" class="alert-block msgDiv noprint">
		<strong><a id="deSelectAllMsg">Deselect all</a></strong>
	</div>
	<table class="table table-bordered listViewEntriesTable">
		<thead>
			<tr class="listViewHeaders">
				<th nowrap="" calss="" width="5%">
					<input type="checkbox" id="listViewEntriesMainCheckBox" class="">
				</th>
				<th nowrap="" class="medium">
					<a data-columnname="record_name" class="listViewHeaderValues" href="javascript:void(0);">Name ({vtranslate({$RELATED_MODULE}, $RELATED_MODULE)})</a>
				</th>
				<th nowrap="" class="medium">
					<a data-columnname="record_email" class="listViewHeaderValues" href="javascript:void(0);">{vtranslate('Email', $MODULE)}</a>
				</th>
				<th nowrap="" class="medium">
					<a data-columnname="record_url" class="listViewHeaderValues" href="javascript:void(0);">{vtranslate('URL', $MODULE)}</a>
				</th>
				<th nowrap="" class="medium">
					<a data-columnname="record_link_name" class="listViewHeaderValues" href="javascript:void(0);">{vtranslate('Link Name', $MODULE)}</a>
				</th>
				<th nowrap="" class="medium">
					<a data-columnname="record_clicks" class="listViewHeaderValues" href="javascript:void(0);">{vtranslate('Click(s)', $MODULE)}</a>
				</th>
			</tr>
		</thead>
		<tbody>
			{foreach key=COUNT_NO item=FIELD_MODEL from=$RECORD_DATA}
				<tr class="listViewEntries" id="EmailCampaigns_reportList_row_{$COUNT_NO}" data-recordurl="{$link}={$FIELD_MODEL[5]}" data-id="{$FIELD_MODEL[5]}">
					<td nowrap="" class="listViewEntryValue" width="5%">
						<input type="checkbox" value="{$FIELD_MODEL[5]}" class="listViewEntriesCheckBox">
					</td>
					<td nowrap="" class="listViewEntryValue medium" data-field-name="record_name">
						<span>{$FIELD_MODEL[0]}</span>
					</td>
					<td nowrap="" class="listViewEntryValue medium" data-field-name="record_email">
						<span>{$FIELD_MODEL[1]}</span>
					</td>
					<td nowrap="" class="listViewEntryValue medium" data-field-name="record_url">
						<span>{$FIELD_MODEL[2]}</span>
					</td>
					<td nowrap="" class="listViewEntryValue medium" data-field-name="record_link_name">
						<span>{$FIELD_MODEL[3]}</span>
					</td>
					<td nowrap="" class="listViewEntryValue medium" data-field-name="record_clicks">
						<span>{$FIELD_MODEL[4]}</span>
					</td>
				</tr>
			{/foreach}
		</tbody>
	</table>
{/strip}
