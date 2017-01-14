{{ partial "header.html" . }}

<section class="container-fluid episode-list">
      <div class="col-md-12 episode-list-header">
        <h3>All Episodes</h3>
      </div>

    <div class="row">

        {{ $paginator := .Paginate (where .Data.Pages "Type" "episode") }}
        {{ range $paginator.Pages }}
          <div class="col-md-4">
						<div class="episode-image-homepage">
							<a href="{{ .Permalink }}">
								<div>
									{{ title .Title }} (Episode {{ .Params.episode }})
								</div>
							</a>
            	<div>
								{{ .Description | markdownify }}
							</div>

            </div>
          </div>
        {{ end }}
      </div>
    </section>
    <!--pagination-->
<div class="row">
  		<div class="col-md-offset-4 col-md-6">
        {{ template "_internal/pagination.html" . }}
  		</div>
  	</div>

    <!--pagination-->


{{ partial "footer.html" . }}
