.class public final Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;
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

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDetachingDynamicPkgName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->access$getDetachingDynamicPkgName$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRunningDynamicPkgName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->access$getRunningDynamicPkgName$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setDetachingDynamicPkgName(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->access$setDetachingDynamicPkgName$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setRunningDynamicPkgName(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->access$setRunningDynamicPkgName$cp(Ljava/lang/String;)V

    return-void
.end method
