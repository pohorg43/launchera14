.class public final Lcom/android/launcher/guide/side/GuideLearningViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;,
        Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageIds:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnItemClickListener:Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;

.field private mTitleIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_44

    iput-object v1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mImageIds:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_50

    iput-object v0, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mTitleIds:[I

    iput-object p1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isHomeGestureLightAnimation()Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x2

    new-array v0, p1, [I

    fill-array-data v0, :array_5c

    iput-object v0, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mImageIds:[I

    new-array p1, p1, [I

    fill-array-data p1, :array_64

    iput-object p1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mTitleIds:[I

    :cond_43
    return-void

    :array_44
    .array-data 4
        0x7f080686
        0x7f080687
        0x7f080688
        0x7f080689
    .end array-data

    :array_50
    .array-data 4
        0x7f120558
        0x7f12055c
        0x7f12029c
        0x7f12056e
    .end array-data

    :array_5c
    .array-data 4
        0x7f080686
        0x7f080689
    .end array-data

    :array_64
    .array-data 4
        0x7f120558
        0x7f12056e
    .end array-data
.end method

.method public static synthetic a(Lcom/android/launcher/guide/side/GuideLearningViewAdapter;ILandroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->onBindViewHolder$lambda$0(Lcom/android/launcher/guide/side/GuideLearningViewAdapter;ILandroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/android/launcher/guide/side/GuideLearningViewAdapter;ILandroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mOnItemClickListener:Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;

    if-eqz p0, :cond_d

    invoke-interface {p0, p1}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;->onClick(I)V

    :cond_d
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mImageIds:[I

    array-length p0, p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->onBindViewHolder(Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;I)V
    .registers 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->getMImg()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mImageIds:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_12
    invoke-virtual {p1}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->getMTxt()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mTitleIds:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1f
    invoke-virtual {p1}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->getMImg()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2d

    new-instance v0, Lcom/android/launcher/guide/side/a;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher/guide/side/a;-><init>(Lcom/android/launcher/guide/side/GuideLearningViewAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2d
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;
    .registers 5

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 p2, 0x0

    if-eqz p0, :cond_14

    const v0, 0x7f0d0143

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_15

    :cond_14
    move-object p0, p2

    :goto_15
    new-instance p1, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    if-eqz p0, :cond_23

    const p2, 0x7f0a0340

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :cond_23
    const-string/jumbo v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->setMImg(Landroid/widget/ImageView;)V

    const p2, 0x7f0a062b

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->setMTxt(Landroid/widget/TextView;)V

    return-object p1
.end method

.method public final setOnItemClickListener(Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;)V
    .registers 3

    const-string/jumbo v0, "onItemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mOnItemClickListener:Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;

    return-void
.end method
