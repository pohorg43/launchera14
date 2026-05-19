.class public final Lw7/i;
.super Lw7/g;
.source ""


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const-string v0, "An unknown field for index "

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lw7/g;-><init>(Ljava/lang/String;)V

    return-void
.end method
