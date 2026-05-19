.class public final synthetic Lk0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic a:Lk0/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lk0/b;

    invoke-direct {v0}, Lk0/b;-><init>()V

    sput-object v0, Lk0/b;->a:Lk0/b;

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

    invoke-static {p1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->c(Landroid/view/View;)V

    return-void
.end method
