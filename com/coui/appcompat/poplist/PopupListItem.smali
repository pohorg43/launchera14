.class public Lcom/coui/appcompat/poplist/PopupListItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/PopupListItem$Builder;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/content/res/ColorStateList;

.field public j:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public o:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->j:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->o:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->j:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->o:I

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    iput-object p2, p0, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->j:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->o:I

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    iput-boolean p4, p0, Lcom/coui/appcompat/poplist/PopupListItem;->f:Z

    iput-boolean p6, p0, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    iput p5, p0, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->m:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->n:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->o:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    :cond_a
    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->k:Z

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
