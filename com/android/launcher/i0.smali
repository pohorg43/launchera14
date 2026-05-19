.class public final synthetic Lcom/android/launcher/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/android/launcher/i0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/i0;

    invoke-direct {v0}, Lcom/android/launcher/i0;-><init>()V

    sput-object v0, Lcom/android/launcher/i0;->a:Lcom/android/launcher/i0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher/OplusPagedViewImpl;->m(Landroid/view/View;)V

    return-void
.end method
