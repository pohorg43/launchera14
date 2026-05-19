.class public Lio/branch/search/internal/interfaces/LocalInterface$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/interfaces/LocalInterface$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface$a;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface$a;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$a$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$a;

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->e()Lio/branch/search/e;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface$a$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$a;

    iget-object v1, v1, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v1, v1, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {v1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/branch/search/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$a;

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface$a$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$a;

    iget-object v1, v1, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v1, v1, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {v1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/branch/search/BranchConfiguration;->a(Landroid/content/Context;)V

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$a;

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-static {p0}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/m;)V

    return-void
.end method
