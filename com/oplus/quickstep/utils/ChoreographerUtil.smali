.class public final Lcom/oplus/quickstep/utils/ChoreographerUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/ChoreographerUtil;

.field private static final TAG:Ljava/lang/String; = "ChoreographerUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/ChoreographerUtil;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/ChoreographerUtil;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/ChoreographerUtil;->INSTANCE:Lcom/oplus/quickstep/utils/ChoreographerUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final postFrameCallbackDelay(Ljava/lang/Runnable;I)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance p1, Lcom/oplus/quickstep/utils/ChoreographerUtil$postFrameCallbackDelay$frameCallback$1;

    invoke-direct {p1, v0, p0}, Lcom/oplus/quickstep/utils/ChoreographerUtil$postFrameCallbackDelay$frameCallback$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
