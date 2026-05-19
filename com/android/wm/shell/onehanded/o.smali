.class public final synthetic Lcom/android/wm/shell/onehanded/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;IFI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/o;->a:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iput p2, p0, Lcom/android/wm/shell/onehanded/o;->b:I

    iput p3, p0, Lcom/android/wm/shell/onehanded/o;->c:F

    iput p4, p0, Lcom/android/wm/shell/onehanded/o;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/o;->a:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget v1, p0, Lcom/android/wm/shell/onehanded/o;->b:I

    iget v2, p0, Lcom/android/wm/shell/onehanded/o;->c:F

    iget p0, p0, Lcom/android/wm/shell/onehanded/o;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->f(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;IFI)V

    return-void
.end method
