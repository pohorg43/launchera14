.class public Lb9/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb9/c;


# direct methods
.method public constructor <init>(Lb9/c;)V
    .registers 2

    iput-object p1, p0, Lb9/c$a;->a:Lb9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    const-string v0, "IDHelper"

    const-string v1, "1029"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lb9/c$a;->a:Lb9/c;

    iget-object v0, v0, Lb9/c;->s_a:Landroid/os/IInterface;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lb9/c$a;->a:Lb9/c;

    iget-object v0, v0, Lb9/c;->s_a:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lb9/c$a;->a:Lb9/c;

    iget-object v1, v1, Lb9/c;->s_i:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lb9/c$a;->a:Lb9/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lb9/c;->s_a:Landroid/os/IInterface;

    :cond_22
    return-void
.end method
