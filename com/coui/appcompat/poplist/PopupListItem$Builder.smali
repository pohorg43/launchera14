.class public Lcom/coui/appcompat/poplist/PopupListItem$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/PopupListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->d:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->f:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->h:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->i:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->j:I

    return-void
.end method


# virtual methods
.method public a()Lcom/coui/appcompat/poplist/PopupListItem;
    .registers 5

    new-instance v0, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-direct {v0}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->a:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->c:Z

    iput-boolean v2, v0, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    iget-boolean v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->d:Z

    iput-boolean v2, v0, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    iget-boolean v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->e:Z

    iput-boolean v2, v0, Lcom/coui/appcompat/poplist/PopupListItem;->f:Z

    iget v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->f:I

    iput v2, v0, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->g:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/coui/appcompat/poplist/PopupListItem;->h:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/coui/appcompat/poplist/PopupListItem;->i:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->h:I

    iput v3, v0, Lcom/coui/appcompat/poplist/PopupListItem;->j:I

    iput-boolean v1, v0, Lcom/coui/appcompat/poplist/PopupListItem;->k:Z

    iput-object v2, v0, Lcom/coui/appcompat/poplist/PopupListItem;->l:Ljava/lang/String;

    iput-object v2, v0, Lcom/coui/appcompat/poplist/PopupListItem;->m:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->i:I

    iput v1, v0, Lcom/coui/appcompat/poplist/PopupListItem;->n:I

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->j:I

    iput p0, v0, Lcom/coui/appcompat/poplist/PopupListItem;->o:I

    return-object v0
.end method
