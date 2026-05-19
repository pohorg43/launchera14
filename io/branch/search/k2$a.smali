.class public Lio/branch/search/k2$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/k2;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/branch/search/k2;


# direct methods
.method public constructor <init>(Lio/branch/search/k2;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/k2$a;->b:Lio/branch/search/k2;

    iput-object p2, p0, Lio/branch/search/k2$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    new-instance v0, Lio/branch/search/a2$c;

    iget-object v1, p0, Lio/branch/search/k2$a;->b:Lio/branch/search/k2;

    invoke-static {v1}, Lio/branch/search/k2;->a(Lio/branch/search/k2;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/branch/search/a2$c;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lio/branch/search/k2$a;->b:Lio/branch/search/k2;

    invoke-virtual {v1, v0}, Lio/branch/search/k2;->a(Lio/branch/search/a2$c;)V

    iget-object v0, p0, Lio/branch/search/k2$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/branch/search/z1;->a(Landroid/content/Context;)Lio/branch/search/z1;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/z1;->a()V

    iget-object v0, p0, Lio/branch/search/k2$a;->b:Lio/branch/search/k2;

    invoke-static {v0}, Lio/branch/search/k2;->b(Lio/branch/search/k2;)Lio/branch/search/m;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b(Lio/branch/search/m;JJZ)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_36

    :catch_28
    move-exception v0

    iget-object p0, p0, Lio/branch/search/k2$a;->b:Lio/branch/search/k2;

    invoke-static {p0}, Lio/branch/search/k2;->b(Lio/branch/search/k2;)Lio/branch/search/m;

    move-result-object p0

    const-string v1, "BRANCH_RawSQLiteManager.init"

    const-string v2, "error loading/parsing cold start bundle."

    invoke-virtual {p0, v1, v2, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_36
    return-void
.end method
