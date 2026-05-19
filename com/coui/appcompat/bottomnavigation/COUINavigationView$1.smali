.class Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 8
    .param p2  # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/google/android/material/internal/ViewUtils$RelativePadding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/Insets;->left:I

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->right:I

    iget v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    if-eqz v0, :cond_23

    move v3, v1

    goto :goto_24

    :cond_23
    move v3, p0

    :goto_24
    add-int/2addr v2, v3

    iput v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    iget v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move p0, v1

    :goto_2d
    add-int/2addr v2, p0

    iput v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    return-object p2
.end method
