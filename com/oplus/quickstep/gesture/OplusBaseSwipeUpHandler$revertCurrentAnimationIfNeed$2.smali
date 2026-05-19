.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$revertCurrentAnimationIfNeed$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->revertCurrentAnimationIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$revertCurrentAnimationIfNeed$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$revertCurrentAnimationIfNeed$2;->run$lambda$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final run$lambda$0(Ljava/util/function/Consumer;)V
    .registers 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isSamePackage(Ljava/lang/String;IZ)Z
    .registers 4

    if-eqz p3, :cond_d

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$revertCurrentAnimationIfNeed$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMClosingPkg$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_2d

    :cond_d
    iget-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$revertCurrentAnimationIfNeed$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMClosingPkg$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$revertCurrentAnimationIfNeed$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMClosingAppUserId$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)I

    move-result p1

    if-eq p2, p1, :cond_2a

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$revertCurrentAnimationIfNeed$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMClosingAppUserId$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method public run(ILjava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_10

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$revertCurrentAnimationIfNeed$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMCustomOnDeferredCallback$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_10
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$revertCurrentAnimationIfNeed$2;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMCustomOnDeferredCallback$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p1, Lcom/oplus/quickstep/dock/e;

    invoke-direct {p1, p2}, Lcom/oplus/quickstep/dock/e;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method
