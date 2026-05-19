.class public synthetic Lcom/bumptech/glide/g$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/bumptech/glide/e;->values()[Lcom/bumptech/glide/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bumptech/glide/g$a;->b:[I

    const/4 v1, 0x1

    const/4 v2, 0x3

    :try_start_b
    aput v1, v0, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_d} :catch_d

    :catch_d
    const/4 v0, 0x2

    :try_start_e
    sget-object v3, Lcom/bumptech/glide/g$a;->b:[I

    aput v0, v3, v0
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v3, Lcom/bumptech/glide/g$a;->b:[I

    aput v2, v3, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_16} :catch_16

    :catch_16
    const/4 v3, 0x4

    :try_start_17
    sget-object v4, Lcom/bumptech/glide/g$a;->b:[I

    const/4 v5, 0x0

    aput v3, v4, v5
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_1c} :catch_1c

    :catch_1c
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/bumptech/glide/g$a;->a:[I

    :try_start_25
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2d
    sget-object v1, Lcom/bumptech/glide/g$a;->a:[I

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_37} :catch_37

    :catch_37
    :try_start_37
    sget-object v0, Lcom/bumptech/glide/g$a;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_41} :catch_41

    :catch_41
    :try_start_41
    sget-object v0, Lcom/bumptech/glide/g$a;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v0, Lcom/bumptech/glide/g$a;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v0, Lcom/bumptech/glide/g$a;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_61} :catch_61

    :catch_61
    :try_start_61
    sget-object v0, Lcom/bumptech/glide/g$a;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/bumptech/glide/g$a;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    return-void
.end method
