.class public abstract Lcom/android/quickstep/util/animation/DynamicAnimation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationUpdateListener;,
        Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;,
        Lcom/android/quickstep/util/animation/DynamicAnimation$MassState;,
        Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/quickstep/util/animation/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Landroid/animation/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final ROTATION:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_X:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_Y:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_X:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_Y:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_X:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_Y:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field private static final TAG:Ljava/lang/String; = "DynamicAnimation"

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field public static final TRANSLATION_X:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Y:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Z:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field private static final UNSET:F = 3.4028235E38f

.field public static final X:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field public static final Y:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

.field public static final Z:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;


# instance fields
.field private mAnimationHandler:Landroid/animation/AnimationHandler;

.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field public mMaxValue:F

.field public mMinValue:F

.field private mMinVisibleChange:F

.field public final mProperty:Landroid/util/FloatProperty;

.field public mRunning:Z

.field public mStartValueIsSet:Z

.field public final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mValue:F

.field public mVelocity:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$1;

    const-string/jumbo v1, "translationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->TRANSLATION_X:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$2;

    const-string/jumbo v1, "translationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->TRANSLATION_Y:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$3;

    const-string/jumbo v1, "translationZ"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->TRANSLATION_Z:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$4;

    const-string/jumbo v1, "scaleX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->SCALE_X:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$5;

    const-string/jumbo v1, "scaleY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->SCALE_Y:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$6;

    const-string/jumbo v1, "rotation"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->ROTATION:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$7;

    const-string/jumbo v1, "rotationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->ROTATION_X:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$8;

    const-string/jumbo v1, "rotationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->ROTATION_Y:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$9;

    const-string/jumbo v1, "x"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->X:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$10;

    const-string/jumbo v1, "y"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->Y:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$11;

    const-string/jumbo v1, "z"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->Z:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$12;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->ALPHA:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$13;

    const-string/jumbo v1, "scrollX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->SCROLL_X:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$14;

    const-string/jumbo v1, "scrollY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/animation/DynamicAnimation$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/animation/DynamicAnimation;->SCROLL_Y:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/util/animation/FloatValueHolder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mStartValueIsSet:Z

    iput-boolean v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mRunning:Z

    iput v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mLastFrameTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    new-instance v0, Lcom/android/quickstep/util/animation/DynamicAnimation$15;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/quickstep/util/animation/DynamicAnimation$15;-><init>(Lcom/android/quickstep/util/animation/DynamicAnimation;Ljava/lang/String;Lcom/android/quickstep/util/animation/FloatValueHolder;)V

    iput-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinVisibleChange:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroid/util/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mStartValueIsSet:Z

    iput-boolean v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mRunning:Z

    iput v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mLastFrameTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    sget-object p1, Lcom/android/quickstep/util/animation/DynamicAnimation;->ROTATION:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    if-eq p2, p1, :cond_55

    sget-object p1, Lcom/android/quickstep/util/animation/DynamicAnimation;->ROTATION_X:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    if-eq p2, p1, :cond_55

    sget-object p1, Lcom/android/quickstep/util/animation/DynamicAnimation;->ROTATION_Y:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    if-ne p2, p1, :cond_38

    goto :goto_55

    :cond_38
    sget-object p1, Lcom/android/quickstep/util/animation/DynamicAnimation;->ALPHA:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    if-ne p2, p1, :cond_41

    const/high16 p1, 0x3b800000  # 0.00390625f

    iput p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_5a

    :cond_41
    sget-object p1, Lcom/android/quickstep/util/animation/DynamicAnimation;->SCALE_X:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    if-eq p2, p1, :cond_4f

    sget-object p1, Lcom/android/quickstep/util/animation/DynamicAnimation;->SCALE_Y:Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;

    if-ne p2, p1, :cond_4a

    goto :goto_4f

    :cond_4a
    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_5a

    :cond_4f
    :goto_4f
    const p1, 0x3b03126f  # 0.002f

    iput p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_5a

    :cond_55
    :goto_55
    const p1, 0x3dcccccd  # 0.1f

    iput p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinVisibleChange:F

    :goto_5a
    return-void
.end method

.method private endAnimationInternal(Z)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mRunning:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mLastFrameTime:J

    iput-boolean v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mStartValueIsSet:Z

    :goto_10
    iget-object v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    iget-object v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;

    iget v2, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lcom/android/quickstep/util/animation/DynamicAnimation;ZFF)V

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_32
    iget-object p0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getPropertyValue()F
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method private startAnimationInternal()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mRunning:Z

    iget-boolean v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mValue:F

    :cond_11
    iget v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_29

    iget v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    goto :goto_31

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-object p0
.end method

.method public addUpdateListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancel()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_e
    return-void

    :cond_f
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be canceled from the same thread as the animation handler"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public commitAnimationFrame(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/animation/DynamicAnimation;->doAnimationFrame(J)Z

    return-void
.end method

.method public doAnimationFrame(J)Z
    .registers 11

    iget-wide v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    iput-wide p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mLastFrameTime:J

    iget p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setPropertyValue(F)V

    return v3

    :cond_11
    const/4 v2, 0x2

    sub-long/2addr p1, v0

    :try_start_13
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    sub-long v4, p1, v0

    int-to-long v6, v2

    div-long v6, v0, v6
    :try_end_24
    .catch Ljava/lang/NoSuchMethodError; {:try_start_13 .. :try_end_24} :catch_2a

    cmp-long v2, v4, v6

    if-lez v2, :cond_29

    goto :goto_2a

    :cond_29
    move-wide p1, v0

    :catch_2a
    :goto_2a
    iget-wide v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mLastFrameTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mLastFrameTime:J

    const-string v0, "doAnimationFrame new deltaT: "

    const-string v1, " mLastFrameTime: "

    invoke-static {v0, p1, p2, v1}, Landroidx/concurrent/futures/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mLastFrameTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicAnimation"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/animation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result p1

    iget p2, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mValue:F

    iget v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mValue:F

    iget v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setPropertyValue(F)V

    if-eqz p1, :cond_63

    invoke-direct {p0, v3}, Lcom/android/quickstep/util/animation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_63
    return p1
.end method

.method public abstract getAcceleration(FF)F
.end method

.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mAnimationHandler:Landroid/animation/AnimationHandler;

    if-eqz p0, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public getMinimumVisibleChange()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinVisibleChange:F

    return p0
.end method

.method public getValueThreshold()F
    .registers 2

    iget p0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000  # 0.75f

    mul-float/2addr p0, v0

    return p0
.end method

.method public abstract isAtEquilibrium(FF)Z
.end method

.method public isCurrentThread()Z
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mRunning:Z

    return p0
.end method

.method public removeEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeUpdateListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxValue(F)Lcom/android/quickstep/util/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMaxValue:F

    return-object p0
.end method

.method public setMinValue(F)Lcom/android/quickstep/util/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinValue:F

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lcom/android/quickstep/util/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_e

    iput p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000  # 0.75f

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setValueThreshold(F)V

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPropertyValue(F)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_8
    iget-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2a

    iget-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationUpdateListener;

    iget v1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mValue:F

    iget v2, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v0, p0, v1, v2}, Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lcom/android/quickstep/util/animation/DynamicAnimation;FF)V

    :cond_27
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_2a
    iget-object p0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setStartValue(F)Lcom/android/quickstep/util/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mStartValueIsSet:Z

    return-object p0
.end method

.method public setStartVelocity(F)Lcom/android/quickstep/util/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mVelocity:F

    return-object p0
.end method

.method public abstract setValueThreshold(F)V
.end method

.method public start()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->startAnimationInternal()V

    :cond_d
    return-void

    :cond_e
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract updateValueAndVelocity(J)Z
.end method
