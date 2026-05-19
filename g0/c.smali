.class public final synthetic Lg0/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field public final synthetic b:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic c:I

.field public final synthetic d:[I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/c;->a:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lg0/c;->b:Lcom/android/launcher3/model/data/ItemInfo;

    iput p3, p0, Lg0/c;->c:I

    iput-object p4, p0, Lg0/c;->d:[I

    iput-boolean p5, p0, Lg0/c;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lg0/c;->a:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, Lg0/c;->b:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, p0, Lg0/c;->c:I

    iget-object v3, p0, Lg0/c;->d:[I

    iget-boolean p0, p0, Lg0/c;->e:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->b(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V

    return-void
.end method
