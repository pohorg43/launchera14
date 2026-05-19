.class public Lcom/oplus/zoom/animation/ZoomAnimationUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/animation/ZoomAnimationUtils$CubicEaseOutInterpolator;
    }
.end annotation


# static fields
.field public static final ANIM_ZOOM_CLOSE_SCALE_END:F = 0.0f

.field public static final ANIM_ZOOM_CLOSE_SCALE_START:F = 1.0f

.field public static final ANIM_ZOOM_FLOAT_CLOSE_SCALE_END:F = 0.093f

.field public static final ANIM_ZOOM_FLOAT_CLOSE_SCALE_START:F = 1.0f

.field public static final ANIM_ZOOM_FLOAT_OPEN_SCALE_END:F = 1.0f

.field public static final ANIM_ZOOM_FLOAT_OPEN_SCALE_START:F = 0.5f

.field public static final ANIM_ZOOM_OPEN_SCALE_END:F = 1.0f

.field public static final ANIM_ZOOM_OPEN_SCALE_START:F = 0.0f

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final FULL_ANIM_DURATION:J = 0x190L

.field public static final STATE_CHANGE_DURATION:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "ZoomAnimation"

.field public static final TRANSIT_FLOAT_OPEN_TO_ZOOM:I = 0x67

.field public static final TRANSIT_FULL:I = 0xca

.field public static final TRANSIT_PEN_OPEN_TO_ZOOM:I = 0x69

.field public static final TRANSIT_POCKET_STUDIO_OPEN_TO_ZOOM:I = 0x6a

.field public static final TRANSIT_REMOTE:I = 0x64

.field public static final TRANSIT_SCALE_AND_POSITION:I = 0xc8

.field public static final TRANSIT_STATE_SWITCH:I = 0xc9

.field public static final TRANSIT_ZOOM_CLOSE:I = 0x66

.field public static final TRANSIT_ZOOM_CLOSE_TO_FLOAT:I = 0x68

.field public static final TRANSIT_ZOOM_OPEN:I = 0x65

.field public static final TRANSIT_ZOOM_UNSET:I = -0x1

.field public static final ZOOM_ANIM_DURATION:J = 0x14aL

.field public static final ZOOM_TRANSITION_DURATION:J = 0x12cL


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/zoom/animation/ZoomAnimationUtils;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isClosingTransition(I)Z
    .registers 2

    const/16 v0, 0x66

    if-eq p0, v0, :cond_f

    const/16 v0, 0x68

    if-eq p0, v0, :cond_f

    const/16 v0, 0xca

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isOpeningTransition(I)Z
    .registers 2

    const/16 v0, 0x65

    if-eq p0, v0, :cond_13

    const/16 v0, 0x67

    if-eq p0, v0, :cond_13

    const/16 v0, 0x69

    if-eq p0, v0, :cond_13

    const/16 v0, 0x6a

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static transitToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_27

    packed-switch p0, :pswitch_data_2a

    packed-switch p0, :pswitch_data_3a

    const-string p0, "ERROR"

    return-object p0

    :pswitch_c  #0xca
    const-string p0, "FULL_SCREEN"

    return-object p0

    :pswitch_f  #0xc9
    const-string p0, "SWITCH_STATE"

    return-object p0

    :pswitch_12  #0xc8
    const-string p0, "SCALE_AND_POSITION"

    return-object p0

    :pswitch_15  #0x6a
    const-string p0, "POCKET_STUDIO"

    return-object p0

    :pswitch_18  #0x69
    const-string p0, "PEN_OPEN_TO_ZOOM"

    return-object p0

    :pswitch_1b  #0x68
    const-string p0, "ZOOM_CLOSE_TO_FLOAT"

    return-object p0

    :pswitch_1e  #0x67
    const-string p0, "FLOAT_OPEN_TO_ZOOM"

    return-object p0

    :pswitch_21  #0x66
    const-string p0, "ZOOM_CLOSE"

    return-object p0

    :pswitch_24  #0x65
    const-string p0, "ZOOM_OPEN"

    return-object p0

    :cond_27
    const-string p0, "UNSET"

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x65
        :pswitch_24  #00000065
        :pswitch_21  #00000066
        :pswitch_1e  #00000067
        :pswitch_1b  #00000068
        :pswitch_18  #00000069
        :pswitch_15  #0000006a
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0xc8
        :pswitch_12  #000000c8
        :pswitch_f  #000000c9
        :pswitch_c  #000000ca
    .end packed-switch
.end method
