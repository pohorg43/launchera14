.class Lcom/android/launcher3/bottomsearch/ExpandTips$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/bottomsearch/ExpandTips;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/bottomsearch/ExpandTips;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$3;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/ExpandTips$3;->this$0:Lcom/android/launcher3/bottomsearch/ExpandTips;

    invoke-virtual {p0}, Lcom/android/launcher3/bottomsearch/ExpandTips;->dismiss()V

    return-void
.end method
