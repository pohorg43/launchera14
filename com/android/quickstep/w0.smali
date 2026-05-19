.class public final synthetic Lcom/android/quickstep/w0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic b:Lcom/android/quickstep/w0;

.field public static final synthetic c:Lcom/android/quickstep/w0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/w0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/w0;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/w0;->b:Lcom/android/quickstep/w0;

    new-instance v0, Lcom/android/quickstep/w0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/quickstep/w0;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/w0;->c:Lcom/android/quickstep/w0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/w0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Lcom/android/quickstep/w0;->a:I

    packed-switch p0, :pswitch_data_10

    goto :goto_b

    :pswitch_6  #0x0
    invoke-static {}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->i()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_b
    invoke-static {}, Lcom/android/wm/shell/pip/PipAnimationController;->a()Landroid/animation/AnimationHandler;

    move-result-object p0

    return-object p0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
