.class public final synthetic Lcom/android/launcher/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;IIILjava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/f0;->a:Landroid/os/Handler;

    iput p2, p0, Lcom/android/launcher/f0;->b:I

    iput p3, p0, Lcom/android/launcher/f0;->c:I

    iput p4, p0, Lcom/android/launcher/f0;->d:I

    iput-object p5, p0, Lcom/android/launcher/f0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/f0;->a:Landroid/os/Handler;

    iget v1, p0, Lcom/android/launcher/f0;->b:I

    iget v2, p0, Lcom/android/launcher/f0;->c:I

    iget v3, p0, Lcom/android/launcher/f0;->d:I

    iget-object p0, p0, Lcom/android/launcher/f0;->e:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher/MessagePostHelperImpl;->a(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method
