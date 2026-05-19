.class public Lio/branch/search/internal/interfaces/LocalInterface$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/interfaces/LocalInterface$d;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface$d;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface$d;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$d$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$d$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$d;

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$d;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    invoke-virtual {p0}, Lio/branch/search/v3;->c()V

    return-void
.end method
