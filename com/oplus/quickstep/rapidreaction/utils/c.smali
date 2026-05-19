.class public final synthetic Lcom/oplus/quickstep/rapidreaction/utils/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic b:Lcom/oplus/quickstep/rapidreaction/utils/c;

.field public static final synthetic c:Lcom/oplus/quickstep/rapidreaction/utils/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/rapidreaction/utils/c;-><init>(I)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/c;->b:Lcom/oplus/quickstep/rapidreaction/utils/c;

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/rapidreaction/utils/c;-><init>(I)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/c;->c:Lcom/oplus/quickstep/rapidreaction/utils/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/c;->a:I

    packed-switch p0, :pswitch_data_e

    goto :goto_a

    :pswitch_6  #0x0
    invoke-static {p1, p2}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->c(Landroid/content/DialogInterface;I)V

    return-void

    :goto_a
    invoke-static {p1, p2}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->b(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
