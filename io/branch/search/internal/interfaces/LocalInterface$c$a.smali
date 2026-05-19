.class public Lio/branch/search/internal/interfaces/LocalInterface$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/interfaces/LocalInterface$c;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lio/branch/search/internal/interfaces/LocalInterface$c;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface$c;I)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$c$a;->b:Lio/branch/search/internal/interfaces/LocalInterface$c;

    iput p2, p0, Lio/branch/search/internal/interfaces/LocalInterface$c$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$c$a;->b:Lio/branch/search/internal/interfaces/LocalInterface$c;

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface$c;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    iget p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$c$a;->a:I

    invoke-virtual {v0, p0}, Lio/branch/search/v3;->a(I)V

    return-void
.end method
