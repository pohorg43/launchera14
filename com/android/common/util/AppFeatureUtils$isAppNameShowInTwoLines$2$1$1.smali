.class final Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1$1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1$1;

    invoke-direct {v0}, Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1$1;-><init>()V

    sput-object v0, Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1$1;->INSTANCE:Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    instance-of p0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_12

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz p0, :cond_12

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_12
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, p1}, Lcom/android/common/util/AppFeatureUtils$isAppNameShowInTwoLines$2$1$1;->accept(Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method
