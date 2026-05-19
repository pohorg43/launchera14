.class public final Lcom/android/common/debug/RateLimitedLogger$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/debug/RateLimitedLogger;
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

    invoke-direct {p0}, Lcom/android/common/debug/RateLimitedLogger$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lcom/android/common/debug/RateLimitedLogger;
    .registers 1

    invoke-static {}, Lcom/android/common/debug/RateLimitedLogger;->access$getINSTANCE$delegate$cp()Lh4/f;

    move-result-object p0

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/debug/RateLimitedLogger;

    return-object p0
.end method
