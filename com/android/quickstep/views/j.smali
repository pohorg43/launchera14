.class public final synthetic Lcom/android/quickstep/views/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/DividerMenu;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/views/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/j;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    iget v0, p0, Lcom/android/quickstep/views/j;->a:I

    packed-switch v0, :pswitch_data_20

    goto :goto_13

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/quickstep/views/j;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->f(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    :goto_13
    iget-object p0, p0, Lcom/android/quickstep/views/j;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/oplus/splitscreen/DividerMenu;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/oplus/splitscreen/DividerMenu;->a(Lcom/oplus/splitscreen/DividerMenu;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
