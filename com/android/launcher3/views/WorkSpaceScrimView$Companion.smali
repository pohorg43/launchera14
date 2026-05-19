.class public final Lcom/android/launcher3/views/WorkSpaceScrimView$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/WorkSpaceScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/views/WorkSpaceScrimView$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getICON_BLUR_CLOSE_EXECUTOR()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/views/WorkSpaceScrimView;->access$getICON_BLUR_CLOSE_EXECUTOR$cp()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public final getICON_BLUR_OPEN_EXECUTOR()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/views/WorkSpaceScrimView;->access$getICON_BLUR_OPEN_EXECUTOR$cp()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method
