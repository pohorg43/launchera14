.class public final Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;,
        Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANIMATIONVIEW_COUNT:I = 0x3

.field public static final Companion:Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$Companion;

.field public static final SCALE_NUM:F = 0.33f


# instance fields
.field private final data:Landroid/util/SparseIntArray;

.field private final jsonData:Landroid/util/SparseIntArray;

.field private mBinding:Lcom/android/launcher3/databinding/TaskbarAnimationLayoutBinding;

.field private final mGuidImageView:[Lcom/oplus/anim/EffectiveAnimationView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->Companion:Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->mGuidImageView:[Lcom/oplus/anim/EffectiveAnimationView;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const v1, 0x7f110023

    const v2, 0x7f1204ce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const v2, 0x7f11002b

    const v3, 0x7f120234

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->data:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->jsonData:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static final synthetic access$getMBinding$p(Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;)Lcom/android/launcher3/databinding/TaskbarAnimationLayoutBinding;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->mBinding:Lcom/android/launcher3/databinding/TaskbarAnimationLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public final getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->mGuidImageView:[Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->data:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->onBindViewHolder(Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;I)V
    .registers 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;->getGuideTextView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->data:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->jsonData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;->getGuideImageView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->jsonData:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    const v1, 0x3ea8f5c3  # 0.33f

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setScale(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->mGuidImageView:[Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;->getGuideImageView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p1

    aput-object p1, p0, p2

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;
    .registers 4

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/android/launcher3/databinding/TaskbarAnimationLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/launcher3/databinding/TaskbarAnimationLayoutBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.f….context), parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->mBinding:Lcom/android/launcher3/databinding/TaskbarAnimationLayoutBinding;

    new-instance p1, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->mBinding:Lcom/android/launcher3/databinding/TaskbarAnimationLayoutBinding;

    if-nez p2, :cond_26

    const-string p2, "mBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_26
    invoke-virtual {p2}, Lcom/android/launcher3/databinding/TaskbarAnimationLayoutBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object p2

    const-string v0, "mBinding.root"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;-><init>(Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;Landroid/view/View;)V

    return-object p1
.end method
