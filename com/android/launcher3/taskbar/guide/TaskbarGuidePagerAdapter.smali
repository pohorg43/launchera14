.class public final Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;,
        Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$TaskbarGuidePagerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANIMATIONVIEW_COUNT:I = 0x3

.field public static final SCALE_NUM:F = 0.33f

.field public static final TaskbarGuidePagerAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$TaskbarGuidePagerAdapter;


# instance fields
.field private final data:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final jsonData:Landroid/util/SparseIntArray;

.field private mBinding:Lcom/android/launcher3/databinding/TaskbarGuidePagePagerItemBinding;

.field private final mGuidImageView:[Lcom/oplus/anim/EffectiveAnimationView;

.field private final textData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$TaskbarGuidePagerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$TaskbarGuidePagerAdapter;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->TaskbarGuidePagerAdapter:Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$TaskbarGuidePagerAdapter;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->mGuidImageView:[Lcom/oplus/anim/EffectiveAnimationView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lh4/j;

    const v2, 0x7f120230

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lh4/j;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->getHideTaskbarHeadword()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->getHideTaskbarSum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->textData:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v2, 0x0

    const v3, 0x7f11002c

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x1

    const v5, 0x7f110013

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->jsonData:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->data:Landroid/util/SparseArray;

    return-void
.end method

.method public static final synthetic access$getMBinding$p(Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;)Lcom/android/launcher3/databinding/TaskbarGuidePagePagerItemBinding;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->mBinding:Lcom/android/launcher3/databinding/TaskbarGuidePagePagerItemBinding;

    return-object p0
.end method

.method private final getHideTaskbarHeadword()I
    .registers 1

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f120556

    goto :goto_d

    :cond_a
    const p0, 0x7f1202be

    :goto_d
    return p0
.end method

.method private final getHideTaskbarSum()I
    .registers 1

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f1202c0

    goto :goto_d

    :cond_a
    const p0, 0x7f1202bf

    :goto_d
    return p0
.end method


# virtual methods
.method public final getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->mGuidImageView:[Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->data:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->onBindViewHolder(Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;I)V
    .registers 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;->getGuideTipsTitleTextView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->data:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->jsonData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/j;

    iget-object v1, v1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;->getGuideTipsSummaryTextView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->data:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->jsonData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/j;

    iget-object v1, v1, Lh4/j;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;->getGuideImageView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->jsonData:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    const v1, 0x3ea8f5c3  # 0.33f

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setScale(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->mGuidImageView:[Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;->getGuideImageView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p1

    aput-object p1, p0, p2

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;
    .registers 4

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/android/launcher3/databinding/TaskbarGuidePagePagerItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/TaskbarGuidePagePagerItemBinding;

    move-result-object p1

    const-string p2, "inflate(inflator, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->mBinding:Lcom/android/launcher3/databinding/TaskbarGuidePagePagerItemBinding;

    new-instance p1, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;->mBinding:Lcom/android/launcher3/databinding/TaskbarGuidePagePagerItemBinding;

    if-nez p2, :cond_26

    const-string p2, "mBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_26
    invoke-virtual {p2}, Lcom/android/launcher3/databinding/TaskbarGuidePagePagerItemBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object p2

    const-string v0, "mBinding.root"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter$ViewHolder;-><init>(Lcom/android/launcher3/taskbar/guide/TaskbarGuidePagerAdapter;Landroid/view/View;)V

    return-object p1
.end method
