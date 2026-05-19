.class Lcom/android/quickstep/util/animation/DynamicAnimation$15;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/animation/DynamicAnimation;-><init>(Lcom/android/quickstep/util/animation/FloatValueHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/util/animation/DynamicAnimation;

.field public final synthetic val$floatValueHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/animation/DynamicAnimation;Ljava/lang/String;Lcom/android/quickstep/util/animation/FloatValueHolder;)V
    .registers 4

    iput-object p1, p0, Lcom/android/quickstep/util/animation/DynamicAnimation$15;->this$0:Lcom/android/quickstep/util/animation/DynamicAnimation;

    iput-object p3, p0, Lcom/android/quickstep/util/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Float;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/FloatValueHolder;->getValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/DynamicAnimation$15;->get(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/util/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/android/quickstep/util/animation/FloatValueHolder;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/animation/FloatValueHolder;->setValue(F)V

    return-void
.end method
