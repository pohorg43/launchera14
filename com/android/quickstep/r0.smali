.class public final synthetic Lcom/android/quickstep/r0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/OplusBaseTaskAnimationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OplusBaseTaskAnimationManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/r0;->a:Lcom/android/quickstep/OplusBaseTaskAnimationManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/r0;->a:Lcom/android/quickstep/OplusBaseTaskAnimationManager;

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->c(Lcom/android/quickstep/OplusBaseTaskAnimationManager;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
