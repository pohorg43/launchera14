.class public final synthetic Lcom/android/launcher3/hotseat/expand/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;ZLkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hotseat/expand/e;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/launcher3/hotseat/expand/e;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/hotseat/expand/e;->c:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/launcher3/hotseat/expand/e;->d:Z

    iput-object p5, p0, Lcom/android/launcher3/hotseat/expand/e;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/e;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/hotseat/expand/e;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/hotseat/expand/e;->c:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/launcher3/hotseat/expand/e;->d:Z

    iget-object v4, p0, Lcom/android/launcher3/hotseat/expand/e;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v5, p1

    check-cast v5, Ljava/util/ArrayList;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;ZLkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/ArrayList;)V

    return-void
.end method
