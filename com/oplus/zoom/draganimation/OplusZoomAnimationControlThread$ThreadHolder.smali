.class Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread$ThreadHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread$1;)V

    sput-object v0, Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread$ThreadHolder;->INSTANCE:Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;
    .registers 1

    sget-object v0, Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread$ThreadHolder;->INSTANCE:Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;

    return-object v0
.end method
