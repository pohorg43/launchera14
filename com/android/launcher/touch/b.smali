.class public final synthetic Lcom/android/launcher/touch/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic a:Lcom/android/launcher/touch/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/touch/b;

    invoke-direct {v0}, Lcom/android/launcher/touch/b;-><init>()V

    sput-object v0, Lcom/android/launcher/touch/b;->a:Lcom/android/launcher/touch/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher/touch/ShelfDialog;->a(Landroid/view/View;)V

    return-void
.end method
