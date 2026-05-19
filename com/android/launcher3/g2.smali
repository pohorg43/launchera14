.class public final synthetic Lcom/android/launcher3/g2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusWorkspace;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusWorkspace;ZILjava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/g2;->a:Lcom/android/launcher3/OplusWorkspace;

    iput-boolean p2, p0, Lcom/android/launcher3/g2;->b:Z

    iput p3, p0, Lcom/android/launcher3/g2;->c:I

    iput-object p4, p0, Lcom/android/launcher3/g2;->d:Ljava/lang/String;

    iput p5, p0, Lcom/android/launcher3/g2;->e:I

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/g2;->a:Lcom/android/launcher3/OplusWorkspace;

    iget-boolean v1, p0, Lcom/android/launcher3/g2;->b:Z

    iget v2, p0, Lcom/android/launcher3/g2;->c:I

    iget-object v3, p0, Lcom/android/launcher3/g2;->d:Ljava/lang/String;

    iget v4, p0, Lcom/android/launcher3/g2;->e:I

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/OplusWorkspace;->d0(Lcom/android/launcher3/OplusWorkspace;ZILjava/lang/String;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
