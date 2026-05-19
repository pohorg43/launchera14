.class public final synthetic Lcom/oplus/quickstep/utils/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/utils/AnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/utils/AnimationController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/a;->a:Lcom/oplus/quickstep/utils/AnimationController;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/utils/a;->a:Lcom/oplus/quickstep/utils/AnimationController;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->c(Lcom/oplus/quickstep/utils/AnimationController;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
