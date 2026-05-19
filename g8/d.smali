.class public final Lg8/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le8/x;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:Le8/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/x;Le8/z;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/d;->a:Le8/x;

    iput-object p2, p0, Lg8/d;->b:Le8/z;

    return-void
.end method

.method public static a(Le8/z;Le8/x;)Z
    .registers 5

    iget v0, p0, Le8/z;->c:I

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_58

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_58

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_58

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_58

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_58

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_58

    const/16 v1, 0x133

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x134

    if-eq v0, v1, :cond_58

    const/16 v1, 0x194

    if-eq v0, v1, :cond_58

    const/16 v1, 0x195

    if-eq v0, v1, :cond_58

    packed-switch v0, :pswitch_data_6a

    goto :goto_57

    :cond_2f
    :pswitch_2f  #0x12e
    iget-object v0, p0, Le8/z;->f:Le8/q;

    const-string v1, "Expires"

    invoke-virtual {v0, v1}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    if-nez v0, :cond_58

    invoke-virtual {p0}, Le8/z;->a()Le8/c;

    move-result-object v0

    iget v0, v0, Le8/c;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_58

    invoke-virtual {p0}, Le8/z;->a()Le8/c;

    move-result-object v0

    iget-boolean v0, v0, Le8/c;->f:Z

    if-nez v0, :cond_58

    invoke-virtual {p0}, Le8/z;->a()Le8/c;

    move-result-object v0

    iget-boolean v0, v0, Le8/c;->e:Z

    if-eqz v0, :cond_57

    goto :goto_58

    :cond_57
    :goto_57
    return v2

    :cond_58
    :goto_58
    :pswitch_58  #0x12c, 0x12d
    invoke-virtual {p0}, Le8/z;->a()Le8/c;

    move-result-object p0

    iget-boolean p0, p0, Le8/c;->b:Z

    if-nez p0, :cond_69

    invoke-virtual {p1}, Le8/x;->a()Le8/c;

    move-result-object p0

    iget-boolean p0, p0, Le8/c;->b:Z

    if-nez p0, :cond_69

    const/4 v2, 0x1

    :cond_69
    return v2

    :pswitch_data_6a
    .packed-switch 0x12c
        :pswitch_58  #0000012c
        :pswitch_58  #0000012d
        :pswitch_2f  #0000012e
    .end packed-switch
.end method
