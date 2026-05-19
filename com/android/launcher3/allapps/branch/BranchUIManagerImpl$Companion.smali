.class public final Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;
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

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEVICE_PROTECT_TIME_LIMIT()J
    .registers 3

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->access$getDEVICE_PROTECT_TIME_LIMIT$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setDEVICE_PROTECT_TIME_LIMIT(J)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->access$setDEVICE_PROTECT_TIME_LIMIT$cp(J)V

    return-void
.end method
