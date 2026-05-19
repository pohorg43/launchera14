.class public final synthetic Lcom/android/launcher3/model/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/IntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntArray;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/o0;->a:Lcom/android/launcher3/util/IntArray;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/model/o0;->a:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    return-void
.end method
