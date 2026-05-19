.class final Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;->invokeTransformAction(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/card/theme/data/TargetDescription;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.card.theme.ui.TransformToCardWrapper"
    f = "TransformToCardWrapper.kt"
    l = {
        0x39,
        0x47,
        0x53,
        0x54,
        0x63,
        0x70
    }
    m = "invokeTransformAction"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/Object;

.field public L$8:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->this$0:Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;

    invoke-direct {p0, p2}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    iput-object p1, p0, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->label:I

    iget-object v0, p0, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->this$0:Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;->invokeTransformAction(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/card/theme/data/TargetDescription;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
