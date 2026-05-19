.class public Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source ""


# static fields
.field public static final CROSS:Ljava/lang/String; = "CROSS"

.field public static final KEY_TYPE:I = 0x5

.field public static final NEGATIVE_CROSS:Ljava/lang/String; = "negativeCross"

.field public static final POSITIVE_CROSS:Ljava/lang/String; = "positiveCross"

.field public static final POST_LAYOUT:Ljava/lang/String; = "postLayout"

.field private static final TAG:Ljava/lang/String; = "KeyTrigger"

.field public static final TRIGGER_COLLISION_ID:Ljava/lang/String; = "triggerCollisionId"

.field public static final TRIGGER_COLLISION_VIEW:Ljava/lang/String; = "triggerCollisionView"

.field public static final TRIGGER_ID:Ljava/lang/String; = "triggerID"

.field public static final TRIGGER_RECEIVER:Ljava/lang/String; = "triggerReceiver"

.field public static final TRIGGER_SLACK:Ljava/lang/String; = "triggerSlack"

.field public static final TYPE_CROSS:I = 0x138

.field public static final TYPE_NEGATIVE_CROSS:I = 0x136

.field public static final TYPE_POSITIVE_CROSS:I = 0x135

.field public static final TYPE_POST_LAYOUT:I = 0x130

.field public static final TYPE_TRIGGER_COLLISION_ID:I = 0x133

.field public static final TYPE_TRIGGER_COLLISION_VIEW:I = 0x132

.field public static final TYPE_TRIGGER_ID:I = 0x134

.field public static final TYPE_TRIGGER_RECEIVER:I = 0x137

.field public static final TYPE_TRIGGER_SLACK:I = 0x131

.field public static final TYPE_VIEW_TRANSITION_ON_CROSS:I = 0x12d

.field public static final TYPE_VIEW_TRANSITION_ON_NEGATIVE_CROSS:I = 0x12f

.field public static final TYPE_VIEW_TRANSITION_ON_POSITIVE_CROSS:I = 0x12e

.field public static final VIEW_TRANSITION_ON_CROSS:Ljava/lang/String; = "viewTransitionOnCross"

.field public static final VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String; = "viewTransitionOnNegativeCross"

.field public static final VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String; = "viewTransitionOnPositiveCross"


# instance fields
.field public mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

.field private mCross:Ljava/lang/String;

.field private mCurveFit:I

.field private mFireCrossReset:Z

.field private mFireLastPos:F

.field private mFireNegativeReset:Z

.field private mFirePositiveReset:Z

.field private mFireThreshold:F

.field private mNegativeCross:Ljava/lang/String;

.field private mPositiveCross:Ljava/lang/String;

.field private mPostLayout:Z

.field public mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

.field private mTriggerCollisionId:I

.field private mTriggerID:I

.field private mTriggerReceiver:I

.field public mTriggerSlack:F

.field public mViewTransitionOnCross:I

.field public mViewTransitionOnNegativeCross:I

.field public mViewTransitionOnPositiveCross:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    sget v1, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    const v0, 0x3dcccccd  # 0.1f

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnNegativeCross:I

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnPositiveCross:I

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnCross:I

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    const/4 v0, 0x5

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    return-void
.end method

.method private fireCustom(Ljava/lang/String;Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_16

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_16
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_3a

    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_3a
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/CustomVariable;

    if-eqz v2, :cond_20

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->applyToWidget(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto :goto_20

    :cond_48
    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object p0

    return-object p0
.end method

.method public conditionallyFire(FLandroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 3

    return-void
.end method

.method public bridge synthetic copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    move-result-object p0

    return-object p0
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;
    .registers 3

    invoke-super {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    check-cast p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCurveFit:I

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireCrossReset:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireNegativeReset:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFirePositiveReset:Z

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireThreshold:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireLastPos:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mFireLastPos:F

    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCollisionRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    iget-object p1, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTargetRect:Landroidx/constraintlayout/core/motion/utils/FloatRect;

    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getId(Ljava/lang/String;)I
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_be

    :goto_b
    move p0, v0

    goto/16 :goto_98

    :sswitch_e
    const-string/jumbo p0, "triggerReceiver"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_b

    :cond_18
    const/16 p0, 0xa

    goto/16 :goto_98

    :sswitch_1c
    const-string/jumbo p0, "postLayout"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_b

    :cond_26
    const/16 p0, 0x9

    goto/16 :goto_98

    :sswitch_2a
    const-string/jumbo p0, "viewTransitionOnCross"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_b

    :cond_34
    const/16 p0, 0x8

    goto/16 :goto_98

    :sswitch_38
    const-string/jumbo p0, "triggerSlack"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto :goto_b

    :cond_42
    const/4 p0, 0x7

    goto :goto_98

    :sswitch_44
    const-string/jumbo p0, "viewTransitionOnNegativeCross"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_b

    :cond_4e
    const/4 p0, 0x6

    goto :goto_98

    :sswitch_50
    const-string/jumbo p0, "triggerCollisionView"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    goto :goto_b

    :cond_5a
    const/4 p0, 0x5

    goto :goto_98

    :sswitch_5c
    const-string/jumbo p0, "negativeCross"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    goto :goto_b

    :cond_66
    const/4 p0, 0x4

    goto :goto_98

    :sswitch_68
    const-string/jumbo p0, "triggerID"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    goto :goto_b

    :cond_72
    const/4 p0, 0x3

    goto :goto_98

    :sswitch_74
    const-string/jumbo p0, "triggerCollisionId"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto :goto_b

    :cond_7e
    const/4 p0, 0x2

    goto :goto_98

    :sswitch_80
    const-string/jumbo p0, "viewTransitionOnPositiveCross"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8a

    goto :goto_b

    :cond_8a
    const/4 p0, 0x1

    goto :goto_98

    :sswitch_8c
    const-string/jumbo p0, "positiveCross"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_97

    goto/16 :goto_b

    :cond_97
    const/4 p0, 0x0

    :goto_98
    packed-switch p0, :pswitch_data_ec

    return v0

    :pswitch_9c  #0xa
    const/16 p0, 0x137

    return p0

    :pswitch_9f  #0x9
    const/16 p0, 0x130

    return p0

    :pswitch_a2  #0x8
    const/16 p0, 0x12d

    return p0

    :pswitch_a5  #0x7
    const/16 p0, 0x131

    return p0

    :pswitch_a8  #0x6
    const/16 p0, 0x12f

    return p0

    :pswitch_ab  #0x5
    const/16 p0, 0x132

    return p0

    :pswitch_ae  #0x4
    const/16 p0, 0x136

    return p0

    :pswitch_b1  #0x3
    const/16 p0, 0x134

    return p0

    :pswitch_b4  #0x2
    const/16 p0, 0x133

    return p0

    :pswitch_b7  #0x1
    const/16 p0, 0x12e

    return p0

    :pswitch_ba  #0x0
    const/16 p0, 0x135

    return p0

    nop

    :sswitch_data_be
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_8c
        -0x399a6b12 -> :sswitch_80
        -0x2ee3a4eb -> :sswitch_74
        -0x26ab2f2d -> :sswitch_68
        -0x26090af5 -> :sswitch_5c
        -0x4880de1 -> :sswitch_50
        -0x94d7ce -> :sswitch_44
        0x15b9acb8 -> :sswitch_38
        0x4d99e267 -> :sswitch_2a
        0x538787ea -> :sswitch_1c
        0x5b846bc7 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_ba  #00000000
        :pswitch_b7  #00000001
        :pswitch_b4  #00000002
        :pswitch_b1  #00000003
        :pswitch_ae  #00000004
        :pswitch_ab  #00000005
        :pswitch_a8  #00000006
        :pswitch_a5  #00000007
        :pswitch_a2  #00000008
        :pswitch_9f  #00000009
        :pswitch_9c  #0000000a
    .end packed-switch
.end method

.method public setValue(IF)Z
    .registers 4

    const/16 v0, 0x131

    if-eq p1, v0, :cond_9

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result p0

    return p0

    :cond_9
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerSlack:F

    const/4 p0, 0x1

    return p0
.end method

.method public setValue(II)Z
    .registers 4

    const/16 v0, 0x133

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x134

    if-eq p1, v0, :cond_20

    const/16 v0, 0x137

    if-eq p1, v0, :cond_1d

    packed-switch p1, :pswitch_data_30

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result p0

    return p0

    :pswitch_14  #0x12f
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnNegativeCross:I

    goto :goto_2d

    :pswitch_17  #0x12e
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnPositiveCross:I

    goto :goto_2d

    :pswitch_1a  #0x12d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mViewTransitionOnCross:I

    goto :goto_2d

    :cond_1d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerReceiver:I

    goto :goto_2d

    :cond_20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerID:I

    goto :goto_2d

    :cond_2b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mTriggerCollisionId:I

    :goto_2d
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_30
    .packed-switch 0x12d
        :pswitch_1a  #0000012d
        :pswitch_17  #0000012e
        :pswitch_14  #0000012f
    .end packed-switch
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4

    const/16 v0, 0x135

    if-eq p1, v0, :cond_17

    const/16 v0, 0x136

    if-eq p1, v0, :cond_14

    const/16 v0, 0x138

    if-eq p1, v0, :cond_11

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mCross:Ljava/lang/String;

    goto :goto_19

    :cond_14
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mNegativeCross:Ljava/lang/String;

    goto :goto_19

    :cond_17
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPositiveCross:Ljava/lang/String;

    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public setValue(IZ)Z
    .registers 4

    const/16 v0, 0x130

    if-eq p1, v0, :cond_9

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IZ)Z

    move-result p0

    return p0

    :cond_9
    iput-boolean p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->mPostLayout:Z

    const/4 p0, 0x1

    return p0
.end method
