.class public final Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;
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

    invoke-direct {p0}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_FACTORS_ANIMATION_INTERPOLATOR()Landroid/view/animation/LinearInterpolator;
    .registers 1

    invoke-static {}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->access$getDEFAULT_FACTORS_ANIMATION_INTERPOLATOR$cp()Landroid/view/animation/LinearInterpolator;

    move-result-object p0

    return-object p0
.end method
