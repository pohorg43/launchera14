.class public Landroidx/constraintlayout/core/motion/MotionWidget;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;,
        Landroidx/constraintlayout/core/motion/MotionWidget$Motion;
    }
.end annotation


# static fields
.field public static final FILL_PARENT:I = -0x1

.field public static final GONE_UNSET:I = -0x80000000

.field private static final INTERNAL_MATCH_CONSTRAINT:I = -0x3

.field private static final INTERNAL_MATCH_PARENT:I = -0x1

.field private static final INTERNAL_WRAP_CONTENT:I = -0x2

.field private static final INTERNAL_WRAP_CONTENT_CONSTRAINED:I = -0x4

.field public static final INVISIBLE:I = 0x0

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final MATCH_PARENT:I = -0x1

.field public static final PARENT_ID:I = 0x0

.field public static final ROTATE_LEFT_OF_PORTRATE:I = 0x4

.field public static final ROTATE_NONE:I = 0x0

.field public static final ROTATE_PORTRATE_OF_LEFT:I = 0x2

.field public static final ROTATE_PORTRATE_OF_RIGHT:I = 0x1

.field public static final ROTATE_RIGHT_OF_PORTRATE:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VISIBILITY_MODE_IGNORE:I = 0x1

.field public static final VISIBILITY_MODE_NORMAL:I = 0x0

.field public static final VISIBLE:I = 0x4

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mProgress:F

.field public mTransitionPathRotate:F

.field public motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

.field public propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

.field public widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroidx/constraintlayout/core/motion/MotionWidget;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAlpha()F
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    iget p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->alpha:F

    return p0
.end method

.method public getBottom()I
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    return p0
.end method

.method public getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object p0

    return-object p0
.end method

.method public getCustomAttributeNames()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->getCustomAttributeNames()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 3

    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->getId(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    return p0

    :cond_8
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;->getId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLeft()I
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Landroidx/constraintlayout/core/motion/MotionWidget;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPivotX()F
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    return p0
.end method

.method public getPivotY()F
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    return p0
.end method

.method public getRight()I
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    return p0
.end method

.method public getRotationX()F
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    return p0
.end method

.method public getRotationY()F
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    return p0
.end method

.method public getRotationZ()F
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    return p0
.end method

.method public getScaleX()F
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    return p0
.end method

.method public getScaleY()F
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    return p0
.end method

.method public getTop()I
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    return p0
.end method

.method public getTranslationX()F
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    return p0
.end method

.method public getTranslationY()F
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    return p0
.end method

.method public getTranslationZ()F
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    return p0
.end method

.method public getValueAttributes(I)F
    .registers 2

    packed-switch p1, :pswitch_data_44

    :pswitch_3  #0x133
    const/high16 p0, 0x7fc00000  # Float.NaN

    return p0

    :pswitch_6  #0x13c
    iget p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mTransitionPathRotate:F

    return p0

    :pswitch_9  #0x13b
    iget p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mProgress:F

    return p0

    :pswitch_c  #0x13a
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    return p0

    :pswitch_11  #0x139
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    return p0

    :pswitch_16  #0x138
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    return p0

    :pswitch_1b  #0x137
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    return p0

    :pswitch_20  #0x136
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    return p0

    :pswitch_25  #0x135
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    return p0

    :pswitch_2a  #0x134
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    return p0

    :pswitch_2f  #0x132
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    return p0

    :pswitch_34  #0x131
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    return p0

    :pswitch_39  #0x130
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    return p0

    :pswitch_3e  #0x12f
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    return p0

    nop

    :pswitch_data_44
    .packed-switch 0x12f
        :pswitch_3e  #0000012f
        :pswitch_39  #00000130
        :pswitch_34  #00000131
        :pswitch_2f  #00000132
        :pswitch_3  #00000133
        :pswitch_2a  #00000134
        :pswitch_25  #00000135
        :pswitch_20  #00000136
        :pswitch_1b  #00000137
        :pswitch_16  #00000138
        :pswitch_11  #00000139
        :pswitch_c  #0000013a
        :pswitch_9  #0000013b
        :pswitch_6  #0000013c
    .end packed-switch
.end method

.method public getVisibility()I
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    iget p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->visibility:I

    return p0
.end method

.method public getWidgetFrame()Landroidx/constraintlayout/core/state/WidgetFrame;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    return-object p0
.end method

.method public getWidth()I
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getX()I
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    return p0
.end method

.method public getY()I
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    return p0
.end method

.method public layout(IIII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/motion/MotionWidget;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 7

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    if-nez v0, :cond_c

    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    :cond_c
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    iput p3, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    iput p4, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;IF)V
    .registers 4

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;II)V
    .registers 4

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;II)V

    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;IZ)V
    .registers 4

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setInterpolatedValue(Landroidx/constraintlayout/core/motion/CustomAttribute;[F)V
    .registers 4

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget-object p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    aget p2, p2, v0

    const/16 v0, 0x385

    invoke-virtual {p0, p1, v0, p2}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    return-void
.end method

.method public setPivotX(F)V
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    return-void
.end method

.method public setPivotY(F)V
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    return-void
.end method

.method public setRotationX(F)V
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    return-void
.end method

.method public setRotationY(F)V
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    return-void
.end method

.method public setRotationZ(F)V
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    return-void
.end method

.method public setScaleX(F)V
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    return-void
.end method

.method public setTranslationX(F)V
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    return-void
.end method

.method public setTranslationY(F)V
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    return-void
.end method

.method public setTranslationZ(F)V
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    return-void
.end method

.method public setValue(IF)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueAttributes(IF)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueMotion(IF)Z

    move-result p0

    return p0
.end method

.method public setValue(II)Z
    .registers 3

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueAttributes(IF)Z

    move-result p0

    return p0
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueMotion(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setValue(IZ)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setValueAttributes(IF)Z
    .registers 3

    packed-switch p1, :pswitch_data_44

    :pswitch_3  #0x133
    const/4 p0, 0x0

    return p0

    :pswitch_5  #0x13c
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mTransitionPathRotate:F

    goto :goto_41

    :pswitch_8  #0x13b
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mProgress:F

    goto :goto_41

    :pswitch_b  #0x13a
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    goto :goto_41

    :pswitch_10  #0x139
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    goto :goto_41

    :pswitch_15  #0x138
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    goto :goto_41

    :pswitch_1a  #0x137
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    goto :goto_41

    :pswitch_1f  #0x136
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    goto :goto_41

    :pswitch_24  #0x135
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    goto :goto_41

    :pswitch_29  #0x134
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    goto :goto_41

    :pswitch_2e  #0x132
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    goto :goto_41

    :pswitch_33  #0x131
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    goto :goto_41

    :pswitch_38  #0x130
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    goto :goto_41

    :pswitch_3d  #0x12f
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    :goto_41
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_44
    .packed-switch 0x12f
        :pswitch_3d  #0000012f
        :pswitch_38  #00000130
        :pswitch_33  #00000131
        :pswitch_2e  #00000132
        :pswitch_3  #00000133
        :pswitch_29  #00000134
        :pswitch_24  #00000135
        :pswitch_1f  #00000136
        :pswitch_1a  #00000137
        :pswitch_15  #00000138
        :pswitch_10  #00000139
        :pswitch_b  #0000013a
        :pswitch_8  #0000013b
        :pswitch_5  #0000013c
    .end packed-switch
.end method

.method public setValueMotion(IF)Z
    .registers 3

    packed-switch p1, :pswitch_data_16

    const/4 p0, 0x0

    return p0

    :pswitch_5  #0x25a
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeMotionPhase:F

    goto :goto_13

    :pswitch_a  #0x259
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathRotate:F

    goto :goto_13

    :pswitch_f  #0x258
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mMotionStagger:F

    :goto_13
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x258
        :pswitch_f  #00000258
        :pswitch_a  #00000259
        :pswitch_5  #0000025a
    .end packed-switch
.end method

.method public setValueMotion(II)Z
    .registers 3

    packed-switch p1, :pswitch_data_2e

    const/4 p0, 0x0

    return p0

    :pswitch_5  #0x264
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorID:I

    goto :goto_2c

    :pswitch_a  #0x263
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorType:I

    goto :goto_2c

    :pswitch_f  #0x262
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeMotionSteps:I

    goto :goto_2c

    :pswitch_14  #0x261
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPolarRelativeTo:I

    goto :goto_2c

    :pswitch_19  #0x260
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mDrawPath:I

    goto :goto_2c

    :pswitch_1e  #0x25f
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathMotionArc:I

    goto :goto_2c

    :pswitch_23  #0x25e
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateCircleAngleTo:I

    goto :goto_2c

    :pswitch_28  #0x25d
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateRelativeTo:I

    :goto_2c
    const/4 p0, 0x1

    return p0

    :pswitch_data_2e
    .packed-switch 0x25d
        :pswitch_28  #0000025d
        :pswitch_23  #0000025e
        :pswitch_1e  #0000025f
        :pswitch_19  #00000260
        :pswitch_14  #00000261
        :pswitch_f  #00000262
        :pswitch_a  #00000263
        :pswitch_5  #00000264
    .end packed-switch
.end method

.method public setValueMotion(ILjava/lang/String;)Z
    .registers 4

    const/16 v0, 0x25b

    if-eq p1, v0, :cond_f

    const/16 v0, 0x25c

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    goto :goto_13

    :cond_f
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mTransitionEasing:Ljava/lang/String;

    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public setVisibility(I)V
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->visibility:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v2, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v2, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget p0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
