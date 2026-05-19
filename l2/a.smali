.class public final synthetic Ll2/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

.field public final synthetic b:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/a;->a:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    iput-object p2, p0, Ll2/a;->b:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Ll2/a;->a:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    iget-object p0, p0, Ll2/a;->b:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->a(Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
