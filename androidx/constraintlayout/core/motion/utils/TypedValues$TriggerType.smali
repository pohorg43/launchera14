.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TriggerType"
.end annotation


# static fields
.field public static final CROSS:Ljava/lang/String; = "CROSS"

.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyTrigger"

.field public static final NEGATIVE_CROSS:Ljava/lang/String; = "negativeCross"

.field public static final POSITIVE_CROSS:Ljava/lang/String; = "positiveCross"

.field public static final POST_LAYOUT:Ljava/lang/String; = "postLayout"

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


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    const-string/jumbo v0, "viewTransitionOnCross"

    const-string/jumbo v1, "viewTransitionOnPositiveCross"

    const-string/jumbo v2, "viewTransitionOnNegativeCross"

    const-string/jumbo v3, "postLayout"

    const-string/jumbo v4, "triggerSlack"

    const-string/jumbo v5, "triggerCollisionView"

    const-string/jumbo v6, "triggerCollisionId"

    const-string/jumbo v7, "triggerID"

    const-string/jumbo v8, "positiveCross"

    const-string/jumbo v9, "negativeCross"

    const-string/jumbo v10, "triggerReceiver"

    const-string v11, "CROSS"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_ce

    :goto_b
    move p0, v1

    goto/16 :goto_a6

    :sswitch_e
    const-string/jumbo v0, "triggerReceiver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_b

    :cond_18
    const/16 p0, 0xb

    goto/16 :goto_a6

    :sswitch_1c
    const-string/jumbo v0, "postLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_b

    :cond_26
    const/16 p0, 0xa

    goto/16 :goto_a6

    :sswitch_2a
    const-string/jumbo v0, "viewTransitionOnCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_b

    :cond_34
    const/16 p0, 0x9

    goto/16 :goto_a6

    :sswitch_38
    const-string/jumbo v0, "triggerSlack"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto :goto_b

    :cond_42
    const/16 p0, 0x8

    goto/16 :goto_a6

    :sswitch_46
    const-string v0, "CROSS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto :goto_b

    :cond_4f
    const/4 p0, 0x7

    goto :goto_a6

    :sswitch_51
    const-string/jumbo v0, "viewTransitionOnNegativeCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    goto :goto_b

    :cond_5b
    const/4 p0, 0x6

    goto :goto_a6

    :sswitch_5d
    const-string/jumbo v0, "triggerCollisionView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67

    goto :goto_b

    :cond_67
    const/4 p0, 0x5

    goto :goto_a6

    :sswitch_69
    const-string/jumbo v0, "negativeCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_73

    goto :goto_b

    :cond_73
    const/4 p0, 0x4

    goto :goto_a6

    :sswitch_75
    const-string/jumbo v0, "triggerID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7f

    goto :goto_b

    :cond_7f
    const/4 p0, 0x3

    goto :goto_a6

    :sswitch_81
    const-string/jumbo v0, "triggerCollisionId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    goto :goto_b

    :cond_8b
    const/4 p0, 0x2

    goto :goto_a6

    :sswitch_8d
    const-string/jumbo v0, "viewTransitionOnPositiveCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_98

    goto/16 :goto_b

    :cond_98
    const/4 p0, 0x1

    goto :goto_a6

    :sswitch_9a
    const-string/jumbo v0, "positiveCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5

    goto/16 :goto_b

    :cond_a5
    const/4 p0, 0x0

    :goto_a6
    packed-switch p0, :pswitch_data_100

    return v1

    :pswitch_aa  #0xb
    const/16 p0, 0x137

    return p0

    :pswitch_ad  #0xa
    const/16 p0, 0x130

    return p0

    :pswitch_b0  #0x9
    const/16 p0, 0x12d

    return p0

    :pswitch_b3  #0x8
    const/16 p0, 0x131

    return p0

    :pswitch_b6  #0x7
    const/16 p0, 0x138

    return p0

    :pswitch_b9  #0x6
    const/16 p0, 0x12f

    return p0

    :pswitch_bc  #0x5
    const/16 p0, 0x132

    return p0

    :pswitch_bf  #0x4
    const/16 p0, 0x136

    return p0

    :pswitch_c2  #0x3
    const/16 p0, 0x134

    return p0

    :pswitch_c5  #0x2
    const/16 p0, 0x133

    return p0

    :pswitch_c8  #0x1
    const/16 p0, 0x12e

    return p0

    :pswitch_cb  #0x0
    const/16 p0, 0x135

    return p0

    :sswitch_data_ce
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_9a
        -0x399a6b12 -> :sswitch_8d
        -0x2ee3a4eb -> :sswitch_81
        -0x26ab2f2d -> :sswitch_75
        -0x26090af5 -> :sswitch_69
        -0x4880de1 -> :sswitch_5d
        -0x94d7ce -> :sswitch_51
        0x3d6a020 -> :sswitch_46
        0x15b9acb8 -> :sswitch_38
        0x4d99e267 -> :sswitch_2a
        0x538787ea -> :sswitch_1c
        0x5b846bc7 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_cb  #00000000
        :pswitch_c8  #00000001
        :pswitch_c5  #00000002
        :pswitch_c2  #00000003
        :pswitch_bf  #00000004
        :pswitch_bc  #00000005
        :pswitch_b9  #00000006
        :pswitch_b6  #00000007
        :pswitch_b3  #00000008
        :pswitch_b0  #00000009
        :pswitch_ad  #0000000a
        :pswitch_aa  #0000000b
    .end packed-switch
.end method
