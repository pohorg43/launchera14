.class public final synthetic Lcom/oplus/quickstep/utils/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/utils/AnimationSeqHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/utils/AnimationSeqHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/d;->a:Lcom/oplus/quickstep/utils/AnimationSeqHelper;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/utils/d;->a:Lcom/oplus/quickstep/utils/AnimationSeqHelper;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->a(Lcom/oplus/quickstep/utils/AnimationSeqHelper;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
