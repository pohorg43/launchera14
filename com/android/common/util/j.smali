.class public final synthetic Lcom/android/common/util/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/common/util/j;->a:I

    iput p2, p0, Lcom/android/common/util/j;->b:I

    iput p3, p0, Lcom/android/common/util/j;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/common/util/j;->a:I

    iget v1, p0, Lcom/android/common/util/j;->b:I

    iget p0, p0, Lcom/android/common/util/j;->c:I

    invoke-static {v0, v1, p0}, Lcom/android/common/util/DisplayDensityUtils;->a(III)V

    return-void
.end method
