.class public final La3/a$a;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La3/a;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p0, "ShelfDecisionCenter"

    const-string p1, "receive onChange event from ums"

    invoke-static {p0, p1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, La3/a;->b:La3/a;

    invoke-virtual {p0}, La3/a;->b()V

    return-void
.end method
