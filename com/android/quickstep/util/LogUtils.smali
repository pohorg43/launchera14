.class public final Lcom/android/quickstep/util/LogUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/util/LogUtils;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/util/LogUtils;

    invoke-direct {v0}, Lcom/android/quickstep/util/LogUtils;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/LogUtils;->INSTANCE:Lcom/android/quickstep/util/LogUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getShellShareableInstanceId()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/android/internal/logging/InstanceId;",
            "Lcom/android/launcher3/logging/InstanceId;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/internal/logging/InstanceIdSequence;

    const/high16 v1, 0x100000

    invoke-direct {v0, v1}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/logging/InstanceId;-><init>(I)V

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
