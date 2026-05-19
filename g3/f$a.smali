.class public final Lg3/f$a;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg3/f;-><init>(Lg3/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg3/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg3/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg3/f;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg3/f<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lg3/f$a;->a:Lg3/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lg3/f$a;->a:Lg3/f;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ConfigCenter"

    const-string v0, "receive onChange event from ums"

    invoke-static {p1, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lg3/f$a;->a:Lg3/f;

    invoke-virtual {p0}, Lg3/f;->a()V

    return-void
.end method
